import ElectricalEngineeringMicrocontrollersCanonicalLaneLean.InstructionSet

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure TimerPackage {A : MicrocontrollerArchitecturePackage} {I : InstructionSetPackage A} where
  timerCount : Nat
  resolutionBits : Nat
  interruptCapable : Prop
  pwmGeneration : Prop

structure TimerEvidence {A : MicrocontrollerArchitecturePackage} {I : InstructionSetPackage A} (T : TimerPackage I) where
  timerCountPositive : T.timerCount > 0
  resolutionBitsValid : T.resolutionBits ≥ 8
  interruptCapableClosed : T.interruptCapable
  pwmGenerationClosed : T.pwmGeneration

def TimerClosed {A : MicrocontrollerArchitecturePackage} {I : InstructionSetPackage A} (T : TimerPackage I) : Prop :=
  T.timerCount > 0 ∧ T.resolutionBits ≥ 8 ∧ T.interruptCapable ∧ T.pwmGeneration

theorem timer_closed_from_evidence {A : MicrocontrollerArchitecturePackage} {I : InstructionSetPackage A} (T : TimerPackage I) (E : TimerEvidence T) :
    TimerClosed T := by
  exact And.intro E.timerCountPositive (And.intro E.resolutionBitsValid (And.intro E.interruptCapableClosed E.pwmGenerationClosed))

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse