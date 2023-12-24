<?php
defined( 'ABSPATH' ) or die( 'Please don&rsquo;t call the plugin directly. Thanks :)' );

class ACP_Column_sp_redirect extends AC\Column\Meta
	implements \ACP\Editing\Editable, \ACP\Sorting\Sortable, \ACP\Export\Exportable, \ACP\Search\Searchable {

	public function __construct() {
		$this->set_type( 'column-sp_redirect' );
		$this->set_group( 'seopress' );
		$this->set_label( __( 'Redirect?', 'wp-seopress-pro' ) );
	}

	public function get_meta_key() {
		return '_seopress_redirections_enabled';
	}

    /**
	 * @param int $id ID
	 * @return string
	 */
	public function get_value( $post_id ) {
		$value = $this->get_raw_value( $post_id );

		if ( 'yes' === $value ) {
			$value = '<span class="dashicons dashicons-yes-alt"></span>';
		}

		return $value;
	}

	public function editing() {
		return new ACP_Editing_Model_sp_redirect( $this );
	}

	public function sorting() {
		return new ACP_Sorting_Model_sp_redirect( $this );
	}

	public function export() {
		return new ACP_Export_Model_sp_redirect( $this );
	}

	public function search() {
		return new ACP\Search\Comparison\Meta\Checkmark( $this->get_meta_key(), $this->get_meta_type() );
	}

}

/**
 * Editing class. Adds editing functionality to the column.
 */
class ACP_Editing_Model_sp_redirect extends \ACP\Editing\Model {

    /**
	 * Editing view settings
	 * @return array Editable settings
	 */
	public function get_view_settings() {
		return array(
			'type'    => 'togglable',
			'options' => array(
				'yes' => 'Yes',
				''    => 'no',
			),
		);
	}

	/**
	 * Saves the value after using inline-edit
	 *
	 * @param int   $id    Object ID
	 * @param mixed $value Value to be saved
	 */
	public function save( $id, $value ) {
		update_post_meta( $id, '_seopress_redirections_enabled', esc_html( $value ) );
	}

}

/**
 * Sorting class. Adds sorting functionality to the column.
 */
class ACP_Sorting_Model_sp_redirect extends \ACP\Sorting\Model {

	/**
	 * (Optional) Put all the sorting logic here. You can remove this function if you want to sort by raw value only.
	 * @return array
	 */
	public function get_sorting_vars() {
		$values = array();

		// Loops through all the available post/user/comment id's
		foreach ( $this->strategy->get_results() as $id ) {
			$value = $this->column->get_raw_value( $id );
			$values[ $id ] = $value;
		}

		// Sorts the array and return all id's to the main query
		return array(
			'ids' => $this->sort( $values ),
		);

	}

}

/**
 * Export class. Adds export functionality to the column.
 */
class ACP_Export_Model_sp_redirect extends \ACP\Export\Model {

	public function get_value( $id ) {
		return $this->column->get_raw_value( $id );
	}

}
