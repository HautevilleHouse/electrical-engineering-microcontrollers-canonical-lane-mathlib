import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure MicrocontrollerAdmittedObject where
  carrier : Type
  architectureValid : Prop
  programLoaded : Prop
  executionCorrect : Prop
  conclusion : executionCorrect

structure AdmissibleClass where
  object : MicrocontrollerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.executionCorrect ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse