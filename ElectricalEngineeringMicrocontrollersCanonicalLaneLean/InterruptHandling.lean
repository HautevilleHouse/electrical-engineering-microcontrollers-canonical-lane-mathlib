import ElectricalEngineeringMicrocontrollersCanonicalLaneLean.CoreArchitecture

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure InterruptHandlingPackage {C : CoreArchitecturePackage} where
  interruptVectorTableSize : Nat
  priorityLevels : Nat
  interruptLatencyGuaranteed : Prop
  nestingSupported : Prop

structure InterruptHandlingEvidence {C : CoreArchitecturePackage} (I : InterruptHandlingPackage C) where
  interruptLatencyGuaranteedClosed : I.interruptLatencyGuaranteed
  nestingSupportedClosed : I.nestingSupported

def InterruptHandlingClosed {C : CoreArchitecturePackage} (I : InterruptHandlingPackage C) : Prop :=
  I.interruptLatencyGuaranteed ∧ I.nestingSupported

theorem interrupt_handling_closed_from_evidence {C : CoreArchitecturePackage} (I : InterruptHandlingPackage C) (E : InterruptHandlingEvidence I) : InterruptHandlingClosed I :=
  And.intro E.interruptLatencyGuaranteedClosed E.nestingSupportedClosed

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse
