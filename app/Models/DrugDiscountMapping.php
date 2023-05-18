<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DrugDiscountMapping extends Model
{
    use HasFactory;

	const ID  					= 'id';              
	const DRUG_ID  				= 'drug_id';              
	const FIXED_DISCOUNT 		= 'fixed_discount';
	const PERCENTAGE_DISCOUNT 	= 'percentage_discount';
	const BUY_ONE_GET_ONE_FREE  = 'buy_one_get_one_free';
	const SINGLE_PRODUCT_GREATER_500 = 'single_product_greater_500';
	const STATUS 				= 'status';

	const STATUS_ACTIVE 	= 1;
	const STATUS_INACTIVE 	= 0;

    protected $guarded = [];

    protected $table = 'drug_discount_mapping';
    protected $primaryKey = "id";
}
