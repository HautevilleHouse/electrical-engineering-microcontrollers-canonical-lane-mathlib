import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure MicrocontrollerArchitecturePackage where
  cpuCore : Type u
  memoryMap : Type v
  clockSystem : Type w
  coreValid : Prop
  memoryMapValid : Prop
  clockSystemValid : Prop

structure MicrocontrollerArchitectureEvidence (P : MicrocontrollerArchitecturePackage) where
  coreValidClosed : P.coreValid
  memoryMapValidClosed : P.memoryMapValid
  clockSystemValidClosed : P.clockSystemValid

def MicrocontrollerArchitectureClosed (P : MicrocontrollerArchitecturePackage) : Prop :=
  P.coreValid ∧ P.memoryMapValid ∧ P.clockSystemValid

theorem microcontroller_architecture_closed_from_evidence
    (P : MicrocontrollerArchitecturePackage) (E : MicrocontrollerArchitectureEvidence P) :
    MicrocontrollerArchitectureClosed P := by
  exact And.intro E.coreValidClosed (And.intro E.memoryMapValidClosed E.clockSystemValidClosed)

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse