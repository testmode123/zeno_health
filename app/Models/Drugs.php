<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Drugs extends Model
{
    use HasFactory;

	const ID  			= 'id';              
	const DRUG_ID  		= 'drug_id';              
	const DRUG_NAME 	= 'drug_name';
	const MRP 			= 'mrp';
	const PTR  			= 'ptr';
	const EXPIRE_DATE 	= 'expire_date';
	const BARCODE 		= 'barcode';
	const TYPE 			= 'type';
	const STATUS 		= 'status';

	const STATUS_ACTIVE 	= 1;
	const STATUS_INACTIVE 	= 0;

    protected $guarded = [];

    protected $table = 'drugs';
    protected $primaryKey = "id";


    public function getDrugDiscountInfo(){
    	return $this->hasOne(DrugDiscountMapping::class, DrugDiscountMapping::DRUG_ID, self::DRUG_ID)->select(DrugDiscountMapping::ID, DrugDiscountMapping::DRUG_ID, DrugDiscountMapping::FIXED_DISCOUNT, DrugDiscountMapping::PERCENTAGE_DISCOUNT, DrugDiscountMapping::BUY_ONE_GET_ONE_FREE, DrugDiscountMapping::SINGLE_PRODUCT_GREATER_500)->where(DrugDiscountMapping::STATUS, DrugDiscountMapping::STATUS_ACTIVE);
    }
}