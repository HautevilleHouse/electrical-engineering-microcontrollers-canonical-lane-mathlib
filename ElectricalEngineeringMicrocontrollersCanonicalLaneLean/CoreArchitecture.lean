import ElectricalEngineeringMicrocontrollersCanonicalLaneLean.MicrocontrollerAdmittedObject

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure CoreArchitecturePackage where
  dataBusWidth : Nat
  addressBusWidth : Nat
  registerFileSize : Nat
  instructionSetComplete : Prop
  pipelineStages : Nat

structure CoreArchitectureEvidence (P : CoreArchitecturePackage) where
  instructionSetCompleteClosed : P.instructionSetComplete

def CoreArchitectureClosed (P : CoreArchitecturePackage) : Prop :=
  P.instructionSetComplete

theorem core_architecture_closed_from_evidence (P : CoreArchitecturePackage) (E : CoreArchitectureEvidence P) : CoreArchitectureClosed P :=
  E.instructionSetCompleteClosed

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse
