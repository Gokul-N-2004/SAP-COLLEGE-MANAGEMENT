@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCIT_FACULTY_301'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CIT_FACULTY_301
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CIT_FACULTY_301
  association [1..1] to ZR_CIT_FACULTY_301 as _BaseEntity on $projection.FACID = _BaseEntity.FACID
{
  key FacID,
  FacName,
  FacSubject,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  CukyField,
  @Semantics: {
    Amount.Currencycode: 'CukyField'
  }
  FacSalary,
  FacMobileNumber,
  FacEmail,
  FacAge,
  FacExperience,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
