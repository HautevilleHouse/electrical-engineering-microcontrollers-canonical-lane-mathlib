import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse