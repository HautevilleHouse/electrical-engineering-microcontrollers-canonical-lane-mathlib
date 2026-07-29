import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringMicrocontrollersCanonicalLaneLean.MicrocontrollerAdmittedObject

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MicrocontrollerWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse
