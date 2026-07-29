import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure MicrocontrollerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MicrocontrollerAdmittedObject where
  space : MicrocontrollerSpace
  finiteStateMachine : Prop
  deterministicExecution : Prop
  timingGuarantee : Prop
  conclusion : timingGuarantee

def MicrocontrollerWitnessClosed (O : MicrocontrollerAdmittedObject) : Prop :=
  O.timingGuarantee

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse
