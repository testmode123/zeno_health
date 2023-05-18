<?php

namespace App\Traits;
use App\Models\Drugs;
use App\Models\DrugDiscountMapping;

trait PercentageDiscountTraits {

	public function applyPercentageDiscount($drug_id, $qty){

		$data = Drugs::with('getDrugDiscountInfo')->where([Drugs::DRUG_ID => $drug_id, Drugs::STATUS => Drugs::STATUS_ACTIVE])
				->select(Drugs::ID, Drugs::DRUG_ID, Drugs::DRUG_NAME, Drugs::MRP, Drugs::PTR, Drugs::EXPIRE_DATE, Drugs::BARCODE, Drugs::TYPE)
				->first();


		$price = $data['mrp'];

		if($data['mrp'] > 0 && !empty($data['getDrugDiscountInfo']) ){
			$discount = ($data['mrp'] * $data['getDrugDiscountInfo'][DrugDiscountMapping::PERCENTAGE_DISCOUNT]) / 100;
			$price = $data['mrp'] - $discount;
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