@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZCIT_FACULTY_301'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_CIT_FACULTY_301
  as select from ZCIT_FACULTY_301
{
  key fac_id as FacID,
  fac_name as FacName,
  fac_subject as FacSubject,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  cuky_field as CukyField,
  @Semantics.amount.currencyCode: 'CukyField'
  fac_salary as FacSalary,
  fac_mobile_number as FacMobileNumber,
  fac_email as FacEmail,
  fac_age as FacAge,
  fac_experience as FacExperience,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}
