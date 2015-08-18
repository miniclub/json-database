Class Sample.Patient Extends %Persistent
{
Parameter XXX = 123;

Property Pid As %String;

Property Name As %String;

ClassMethod test() As %Status
{
 set obj = ..%New()
 set obj.Pid=10
 set obj.Name = "minamoto"
 quit obj.%Save()
}

Storage Default
{
<Data name="PatientDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Pid</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^Sample.PatientD</DataLocation>
<DefaultData>PatientDefaultData</DefaultData>
<IdLocation>^Sample.PatientD</IdLocation>
<IndexLocation>^Sample.PatientI</IndexLocation>
<StreamLocation>^Sample.PatientS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
