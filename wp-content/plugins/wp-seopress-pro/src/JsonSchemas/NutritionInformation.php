<?php

namespace SEOPressPro\JsonSchemas;

if ( ! defined('ABSPATH')) {
    exit;
}

use SEOPress\Models\GetJsonData;
use SEOPressPro\Models\JsonSchemaValue;

class NutritionInformation extends JsonSchemaValue implements GetJsonData {
    const NAME = 'nutrition-information';

    protected function getName() {
        return self::NAME;
    }

    /**
     * @since 4.6.0
     *
     * @param array $context
     *
     * @return array
     */
    public function getJsonData($context = null) {
        $data = $this->getArrayJson();

        return apply_filters('seopress_pro_get_json_data_nutrition_information', $data, $context);
    }
}
