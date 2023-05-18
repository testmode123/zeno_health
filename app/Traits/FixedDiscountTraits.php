<?php

namespace App\Traits;
use App\Models\Drugs;
use App\Models\DrugDiscountMapping;

trait FixedDiscountTraits {

	public function applyFixedDiscount($drug_id, $qty){

		$data = Drugs::with('getDrugDiscountInfo')->where([Drugs::DRUG_ID => $drug_id, Drugs::STATUS => Drugs::STATUS_ACTIVE])
				->select(Drugs::ID, Drugs::DRUG_ID, Drugs::DRUG_NAME, Drugs::MRP, Drugs::PTR, Drugs::EXPIRE_DATE, Drugs::BARCODE, Drugs::TYPE)
				->first();


		$price = $data['mrp'];

		if($data['mrp'] > 0 && !empty($data['getDrugDiscountInfo']) ){
			$price = $data['mrp'] - $data['getDrugDiscountInfo'][DrugDiscountMapping::FIXED_DISCOUNT];	
		}

		if($price < $data['ptr']){
			$price = $data['ptr'];
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