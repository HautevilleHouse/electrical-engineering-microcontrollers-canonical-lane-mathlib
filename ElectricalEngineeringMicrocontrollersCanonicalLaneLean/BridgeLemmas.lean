import ElectricalEngineeringMicrocontrollersCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.executionCorrect

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse