<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/analytics/data/v1alpha/analytics_data_api.proto

namespace Google\Analytics\Data\V1alpha;

use Google\Protobuf\Internal\GPBType;
use Google\Protobuf\Internal\RepeatedField;
use Google\Protobuf\Internal\GPBUtil;

/**
 * The batch response containing multiple reports.
 *
 * Generated from protobuf message <code>google.analytics.data.v1alpha.BatchRunReportsResponse</code>
 */
class BatchRunReportsResponse extends \Google\Protobuf\Internal\Message
{
    /**
     * Individual responses. Each response has a separate report request.
     *
     * Generated from protobuf field <code>repeated .google.analytics.data.v1alpha.RunReportResponse reports = 1;</code>
     */
    private $reports;

    /**
     * Constructor.
     *
     * @param array $data {
     *     Optional. Data for populating the Message object.
     *
     *     @type \Google\Analytics\Data\V1alpha\RunReportResponse[]|\Google\Protobuf\Internal\RepeatedField $reports
     *           Individual responses. Each response has a separate report request.
     * }
     */
    public function __construct($data = NULL) {
        \GPBMetadata\Google\Analytics\Data\V1Alpha\AnalyticsDataApi::initOnce();
        parent::__construct($data);
    }

    /**
     * Individual responses. Each response has a separate report request.
     *
     * Generated from protobuf field <code>repeated .google.analytics.data.v1alpha.RunReportResponse reports = 1;</code>
     * @return \Google\Protobuf\Internal\RepeatedField
     */
    public function getReports()
    {
        return $this->reports;
    }

    /**
     * Individual responses. Each response has a separate report request.
     *
     * Generated from protobuf field <code>repeated .google.analytics.data.v1alpha.RunReportResponse reports = 1;</code>
     * @param \Google\Analytics\Data\V1alpha\RunReportResponse[]|\Google\Protobuf\Internal\RepeatedField $var
     * @return $this
     */
    public function setReports($var)
    {
        $arr = GPBUtil::checkRepeatedField($var, \Google\Protobuf\Internal\GPBType::MESSAGE, \Google\Analytics\Data\V1alpha\RunReportResponse::class);
        $this->reports = $arr;

        return $this;
    }

}

