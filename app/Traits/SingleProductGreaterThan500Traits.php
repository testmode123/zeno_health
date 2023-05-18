<?php

namespace App\Traits;
use App\Models\Drugs;
use App\Models\DrugDiscountMapping;

trait SingleProductGreaterThan500Traits {

	public function applySingleProductGreaterThan500($drug_id, $qty){

		$data = Drugs::with('getDrugDiscountInfo')->where([Drugs::DRUG_ID => $drug_id, Drugs::STATUS => Drugs::STATUS_ACTIVE])
				->select(Drugs::ID, Drugs::DRUG_ID, Drugs::DRUG_NAME, Drugs::MRP, Drugs::PTR, Drugs::EXPIRE_DATE, Drugs::BARCODE, Drugs::TYPE)
				->first();


		$price = sprintf("%.4f", $data['mrp']);

		if($data['mrp'] >= 500  && !empty($data['getDrugDiscountInfo'])  && $data['getDrugDiscountInfo'][DrugDiscountMapping::SINGLE_PRODUCT_GREATER_500] ){
			$price = $data['mrp'] + 1;
			$qty += 1;	
		}		
		
		$result = [
			'price' => $price,
			'mrp' => $data['mrp'],
			'ptr' => $data['ptr'],
			'qty' => $qty
		];

		return $result;
	}

}