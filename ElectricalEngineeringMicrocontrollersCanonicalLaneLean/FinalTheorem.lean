import ElectricalEngineeringMicrocontrollersCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

def ConstrainedMicrocontrollerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_microcontroller_endgame (A : AdmissibleClass) :
    ConstrainedMicrocontrollerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse