<?php

namespace App\Traits;
use App\Models\Drugs;
use App\Models\DrugDiscountMapping;

trait BuyOneGetOneFreeTraits {

	public function applyBuyOneGetOneFree($drug_id, $qty){

		$data = Drugs::with('getDrugDiscountInfo')->where([Drugs::DRUG_ID => $drug_id, Drugs::STATUS => Drugs::STATUS_ACTIVE])
				->select(Drugs::ID, Drugs::DRUG_ID, Drugs::DRUG_NAME, Drugs::MRP, Drugs::PTR, Drugs::EXPIRE_DATE, Drugs::BARCODE, Drugs::TYPE)
				->first();


		$price = $data['mrp'];

		if($data['mrp'] > 0 && !empty($data['getDrugDiscountInfo']) && $data['getDrugDiscountInfo'][DrugDiscountMapping::BUY_ONE_GET_ONE_FREE]){
			$price = $data['mrp'] * $qty ;	
			$qty = $qty * 2;
		}		
		
		$result = [
			'price' => $price * $qty,
			'mrp' => $data['mrp'],
			'ptr' => $data['ptr'],
			'qty' => $qty
		];

		return $result;
	}
}