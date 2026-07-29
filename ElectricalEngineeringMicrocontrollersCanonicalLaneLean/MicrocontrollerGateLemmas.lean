import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse