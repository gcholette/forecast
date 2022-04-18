defmodule ExGrib.Grib2.Section4.Templates.AnalysisOrForecastForAerosol do
  @moduledoc """
  Template 4.44

  Analysis or forecast for aerosolntal level or ina horizontal layer at a point in time for aerosol

  Note:
  (1)  Hours greater than 65534 will be coded as 65534
  (2)  It is recommended not to use this template. PDT 4.48 should be used instead with Optical Wave Length rang to set missing.

  WARNING THIS TEMPLATE WAS AUTOGENERATED AND IS LIKELY INCOMPLETE

  https://www.nco.ncep.noaa.gov/pmb/docs/grib2/grib2_doc/grib2_temp4-44.shtml
  """

  defstruct parameter_category: nil,
            parameter_number: nil,
            aerosol_type: nil,
            type_of_interval_for_first_and_second_size: nil,
            scale_factor_of_first_size: nil,
            scale_value_of_first_size_in_meters: nil,
            scale_factor_of_second_size: nil,
            scale_value_of_second_size_in_meters: nil,
            type_of_generating_process: nil,
            background_generating_process_identifier: nil,
            analysis_or_forecast_generating_process_identifier: nil,
            hours_of_observational_data_cutoff_after_reference_time: nil,
            minutes_of_observational_data_cutoff_after_reference_time: nil,
            indicator_of_unit_of_time_range: nil,
            forecast_time_in_units_defined_by_octet: nil,
            type_of_first_fixed_surface: nil,
            scale_factor_of_first_fixed_surface: nil,
            scaled_value_of_first_fixed_surface: nil,
            type_of_second_fixed_surfaced: nil,
            scale_factor_of_second_fixed_surface: nil,
            scaled_value_of_second_fixed_surfaces: nil

  @spec get(binary()) :: no_return
  def get(<<
        # Parameter category (see Code table 4.1)
        parameter_category::integer(),
        # Parameter number (see Code table 4.2)
        parameter_number::integer(),
        # Aerosol Type (see Code table 4.233)
        aerosol_type::integer-size(16),
        # Type of interval for first and second size (see Code table 4.91)
        type_of_interval_for_first_and_second_size::integer(),
        scale_factor_of_first_size::integer(),
        scale_value_of_first_size_in_meters::integer-size(32),
        scale_factor_of_second_size::integer(),
        scale_value_of_second_size_in_meters::integer-size(32),
        # Type of generating process (see Code table 4.3)
        type_of_generating_process::integer(),
        # Background generating process identifier (defined by originating centre)
        background_generating_process_identifier::integer(),
        # Analysis or forecast generating process identifier (see Code ON388 Table A)
        analysis_or_forecast_generating_process_identifier::integer(),
        # Hours of observational data cutoff after reference time (see Note)
        hours_of_observational_data_cutoff_after_reference_time::integer-size(16),
        # Minutes of observational data cutoff after reference time (see Note)
        minutes_of_observational_data_cutoff_after_reference_time::integer(),
        # Indicator of unit of time range (see Code table 4.4)
        indicator_of_unit_of_time_range::integer(),
        # Forecast time in units defined by octet 31
        forecast_time_in_units_defined_by_octet::integer-size(16),
        # Type of first fixed surface (see Code table 4.5)
        type_of_first_fixed_surface::integer(),
        scale_factor_of_first_fixed_surface::integer(),
        scaled_value_of_first_fixed_surface::integer-size(32),
        # Type of second fixed surfaced (see Code table 4.5)
        type_of_second_fixed_surfaced::integer(),
        scale_factor_of_second_fixed_surface::integer(),
        scaled_value_of_second_fixed_surfaces::integer-size(32),
        rest::binary()
      >>) do
    template = %__MODULE__{
      parameter_category: parameter_category,
      parameter_number: parameter_number,
      aerosol_type: aerosol_type,
      type_of_interval_for_first_and_second_size: type_of_interval_for_first_and_second_size,
      scale_factor_of_first_size: scale_factor_of_first_size,
      scale_value_of_first_size_in_meters: scale_value_of_first_size_in_meters,
      scale_factor_of_second_size: scale_factor_of_second_size,
      scale_value_of_second_size_in_meters: scale_value_of_second_size_in_meters,
      type_of_generating_process: type_of_generating_process,
      background_generating_process_identifier: background_generating_process_identifier,
      analysis_or_forecast_generating_process_identifier:
        analysis_or_forecast_generating_process_identifier,
      hours_of_observational_data_cutoff_after_reference_time:
        hours_of_observational_data_cutoff_after_reference_time,
      minutes_of_observational_data_cutoff_after_reference_time:
        minutes_of_observational_data_cutoff_after_reference_time,
      indicator_of_unit_of_time_range: indicator_of_unit_of_time_range,
      forecast_time_in_units_defined_by_octet: forecast_time_in_units_defined_by_octet,
      type_of_first_fixed_surface: type_of_first_fixed_surface,
      scale_factor_of_first_fixed_surface: scale_factor_of_first_fixed_surface,
      scaled_value_of_first_fixed_surface: scaled_value_of_first_fixed_surface,
      type_of_second_fixed_surfaced: type_of_second_fixed_surfaced,
      scale_factor_of_second_fixed_surface: scale_factor_of_second_fixed_surface,
      scaled_value_of_second_fixed_surfaces: scaled_value_of_second_fixed_surfaces
    }

    {:ok, template, rest}
  end
end
