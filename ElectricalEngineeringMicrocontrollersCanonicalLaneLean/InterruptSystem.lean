import ElectricalEngineeringMicrocontrollersCanonicalLaneLean.MicrocontrollerArchitecture

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure InterruptControllerPackage where
  interruptCount : Nat
  priorityLevels : Nat
  vectorTableBase : Nat
  nestingSupported : Prop

default InterruptControllerPackage where
  interruptCount := 32
  priorityLevels := 16
  vectorTableBase := 0
  nestingSupported := True

structure InterruptSourcePackage where
  sourceName : String
  flagBit : Nat
  enableBit : Nat
  priorityGroup : Nat

default InterruptSourcePackage where
  sourceName := "TIMER0"
  flagBit := 0
  enableBit := 1
  priorityGroup := 0

structure InterruptSystemPackage where
  controller : InterruptControllerPackage
  sources : List InterruptSourcePackage
  globalInterruptEnable : Prop
  interruptSystemClosed : Prop

structure InterruptSystemEvidence (I : InterruptSystemPackage) where
  controllerValid : I.controller.interruptCount > 0
  sourcesValid : List.length I.sources > 0
  globalInterruptEnableClosed : I.globalInterruptEnable
  interruptSystemClosedClaim : I.interruptSystemClosed

def InterruptSystemClosed (I : InterruptSystemPackage) : Prop :=
  I.controller.interruptCount > 0 ∧ List.length I.sources > 0 ∧ I.globalInterruptEnable ∧ I.interruptSystemClosed

theorem interrupt_system_closed_from_evidence
    (I : InterruptSystemPackage) (E : InterruptSystemEvidence I) :
    InterruptSystemClosed I := by
  exact And.intro E.controllerValid (And.intro E.sourcesValid (And.intro E.globalInterruptEnableClosed E.interruptSystemClosedClaim))

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse