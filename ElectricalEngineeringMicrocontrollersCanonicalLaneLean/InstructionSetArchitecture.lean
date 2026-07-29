import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure InstructionSetArchitecturePackage (A : AdmissibleClass) where
  instructionFormats : Prop
  addressingModes : Prop
  opcodeEncoding : Prop
  pipelineDepth : Nat
  riscArchitecture : Bool

structure InstructionSetArchitectureEvidence {A : AdmissibleClass} (P : InstructionSetArchitecturePackage A) where
  instructionFormatsClosed : P.instructionFormats
  addressingModesClosed : P.addressingModes
  opcodeEncodingClosed : P.opcodeEncoding

def InstructionSetArchitectureClosed {A : AdmissibleClass} (P : InstructionSetArchitecturePackage A) : Prop :=
  P.instructionFormats ∧ P.addressingModes ∧ P.opcodeEncoding

theorem instruction_set_architecture_closed_from_evidence
    {A : AdmissibleClass} (P : InstructionSetArchitecturePackage A) (E : InstructionSetArchitectureEvidence P) :
    InstructionSetArchitectureClosed P := by
  exact And.intro E.instructionFormatsClosed (And.intro E.addressingModesClosed E.opcodeEncodingClosed)

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse