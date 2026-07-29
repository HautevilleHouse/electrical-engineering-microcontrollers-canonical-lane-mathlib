import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure MicrocontrollerAdmittedObject where
  instructionsValid : Prop
  memoryConfigValid : Prop
  interruptHandlingValid : Prop
  timerConfigValid : Prop
  conclusion : instructionsValid ∧ memoryConfigValid ∧ interruptHandlingValid ∧ timerConfigValid

structure AdmissibleClass where
  object : MicrocontrollerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.instructionsValid ∧ A.object.memoryConfigValid ∧ A.object.interruptHandlingValid ∧ A.object.timerConfigValid) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse