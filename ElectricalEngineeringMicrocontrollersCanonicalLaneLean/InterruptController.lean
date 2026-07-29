import ElectricalEngineeringMicrocontrollersCanonicalLaneLean.TimersAndCounters

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure InterruptControllerPackage {A : MicrocontrollerArchitecturePackage} {I : InstructionSetPackage A} {T : TimerPackage I} where
  interruptLines : Nat
  priorityLevels : Nat
  vectorTable : Prop
  nestingCapable : Prop

structure InterruptControllerEvidence {A : MicrocontrollerArchitecturePackage} {I : InstructionSetPackage A} {T : TimerPackage I} (C : InterruptControllerPackage T) where
  interruptLinesPositive : C.interruptLines > 0
  priorityLevelsValid : C.priorityLevels ≥ 1
  vectorTableClosed : C.vectorTable
  nestingCapableClosed : C.nestingCapable

def InterruptControllerClosed {A : MicrocontrollerArchitecturePackage} {I : InstructionSetPackage A} {T : TimerPackage I} (C : InterruptControllerPackage T) : Prop :=
  C.interruptLines > 0 ∧ C.priorityLevels ≥ 1 ∧ C.vectorTable ∧ C.nestingCapable

theorem interrupt_controller_closed_from_evidence {A : MicrocontrollerArchitecturePackage} {I : InstructionSetPackage A} {T : TimerPackage I} (C : InterruptControllerPackage T) (E : InterruptControllerEvidence C) :
    InterruptControllerClosed C := by
  exact And.intro E.interruptLinesPositive (And.intro E.priorityLevelsValid (And.intro E.vectorTableClosed E.nestingCapableClosed))

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse