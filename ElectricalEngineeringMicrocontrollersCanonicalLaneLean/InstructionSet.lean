import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure InstructionSetPackage where
  instructionWidth : Nat
  registerCount : Nat
  opcodeEncoding : Type u
  widthValid : Prop
  registerValid : Prop
  encodingValid : Prop

structure InstructionSetEvidence (I : InstructionSetPackage) where
  widthValidClosed : I.widthValid
  registerValidClosed : I.registerValid
  encodingValidClosed : I.encodingValid

def InstructionSetClosed (I : InstructionSetPackage) : Prop :=
  I.widthValid ∧ I.registerValid ∧ I.encodingValid

theorem instruction_set_closed_from_evidence
    (I : InstructionSetPackage) (E : InstructionSetEvidence I) :
    InstructionSetClosed I := by
  exact And.intro E.widthValidClosed (And.intro E.registerValidClosed E.encodingValidClosed)

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse