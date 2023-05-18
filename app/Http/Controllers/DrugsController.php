<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

use App\Models\Drugs;

use App\Traits\FixedDiscountTraits;
use App\Traits\PercentageDiscountTraits;
use App\Traits\BuyOneGetOneFreeTraits;
use App\Traits\SingleProductGreaterThan500Traits;


class DrugsController extends Controller
{ 
    use FixedDiscountTraits,PercentageDiscountTraits,BuyOneGetOneFreeTraits,SingleProductGreaterThan500Traits;

    public function __construct(){
    	$this->middleware('auth:api');
    }

    public function create(Request $request){
        $validator = Validator::make($request->all(), [
            'drug_id'       => 'required|integer',
            'drug_name'     => 'required|string|max:255',
            'mrp'           => 'required|numeric',
            'ptr'           => 'required|numeric',
            'expire_date'   => 'required',
            'barcode'       => 'required|string|max:255',
            'type'          => 'required|string|max:10',
        ]);

        if ($validator->fails()) {
           return response()->json([
                'status' => 'errors',
                'message' => $validator->errors(),
                'data' => ''
            ]); 
        }

    	$drugs = Drugs::create([
    		'drug_id' => $request->drug_id,
    		'drug_name' => $request->drug_name,
    		'mrp' => $request->mrp,
    		'ptr' => $request->ptr,
    		'expire_date' => $request->expire_date,
    		'barcode' => $request->barcode,
    		'type' => $request->type,
    	]);

    	return response()->json([
    		'status' => 'success',
            'message' => 'Drugs created successfully',
            'data' => $drugs
        ]);
    }

    public function edit($id){
    	$drug = Drugs::find($id);
    	if(empty($drug)){
    		return response()->json([
	    		'status' => 'success',
	    		'message' => 'Record not found',
	    		'data' => []
	    	]);
    	}

    	return response()->json([
    		'status' => 'success',
    		'data' => $drug
    	]);
    }

    public function update(Request $request, $id){

        $validator = Validator::make($request->all(), [
            'drug_id'       => 'required|integer',
            'drug_name'     => 'required|string|max:255',
            'mrp'           => 'required|numeric',
            'ptr'           => 'required|numeric',
            'expire_date'   => 'required',
            'barcode'       => 'required|string|max:255',
            'type'          => 'required|string|max:10',
        ]);

        if ($validator->fails()) {
           return response()->json([
                'status' => 'errors',
                'message' => $validator->errors(),
                'data' => []
            ]); 
        }

        $drugs_update = Drugs::updateOrCreate(['id' => $id], $request->all());

        if($drugs_update){
            return response()->json([
                'status' => 'success',
                'message' => 'Drugs updated successfully',
                'data' => $drugs_update,
            ]);    
        } else {
            return response()->json([
                'status' => 'failed',
                'message' => 'Drugs not updated successfully',
                'data' => [],
            ]);
        }
    }

    public function delete($id){

    	$drug = Drugs::find($id);
    	if(empty($drug)){
    		return response()->json([
	            'status' => 'success',
	            'message' => 'id is not available in our record',
	            'data' => [],
	        ]);
    	}
    	
        $drug->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Drug deleted successfully',
            'data' => $drug,
        ]);

    }

    public function getList(){
        try{
            $limit = 10;
            $allDrugs = Drugs::paginate($limit);

            return response()->json([
                'status' => 'success',
                'data' => $allDrugs
            ]); 
        } catch (Exception $e){
            return response()->json([
                'status' => 'failed',
                'message' => $e->getMessage(),
                'data' => []
            ]); 
        }    	   	
    }

    public function calculateFinalPrice(Request $request){

        $drug_id       = $request->drug_id;
        $qty           = $request->qty;
        $discount_type = $request->discount_type;

        $final_price   = '';

        if($discount_type == 'fixed_discount'){
            $final_price = $this->applyFixedDiscount($drug_id, $qty);
        } elseif ($discount_type == 'percentage_discount') {
            $final_price = $this->applyPercentageDiscount($drug_id, $qty);
        } elseif ($discount_type == 'buy_one_get_one') {
            $final_price = $this->applyBuyOneGetOneFree($drug_id, $qty);
        } elseif ($discount_type == 'single_product_gerater_than_500') {
            $final_price = $this->applySingleProductGreaterThan500($drug_id, $qty);
        }


        $request['final_price'] = $final_price;
        return response()->json([
            'status' => 'success',
            'data' => $request->all()

        ]);
    }
}
