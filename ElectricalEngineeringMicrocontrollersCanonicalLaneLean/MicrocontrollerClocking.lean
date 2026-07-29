import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure MicrocontrollerClockingPackage (A : AdmissibleClass) where
  clockFrequency : Nat
  cycleTime : Prop
  internalOscillator : Prop
  pllMultiplier : Nat
  clockTreeValid : Prop

structure MicrocontrollerClockingEvidence {A : AdmissibleClass} (C : MicrocontrollerClockingPackage A) where
  cycleTimeClosed : C.cycleTime
  clockTreeValidClosed : C.clockTreeValid

def MicrocontrollerClockingClosed {A : AdmissibleClass} (C : MicrocontrollerClockingPackage A) : Prop :=
  C.cycleTime ∧ C.clockTreeValid

theorem microcontroller_clocking_closed_from_evidence
    {A : AdmissibleClass} (C : MicrocontrollerClockingPackage A) (E : MicrocontrollerClockingEvidence C) :
    MicrocontrollerClockingClosed C := by
  exact And.intro E.cycleTimeClosed E.clockTreeValidClosed

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse