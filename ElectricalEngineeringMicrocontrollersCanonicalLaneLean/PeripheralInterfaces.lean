import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure PeripheralInterfacesPackage where
  gpioPresent : Prop
  uartPresent : Prop
  spiPresent : Prop
  gpioFunctional : Prop
  uartFunctional : Prop
  spiFunctional : Prop

structure PeripheralInterfacesEvidence (P : PeripheralInterfacesPackage) where
  gpioFunctionalClosed : P.gpioFunctional
  uartFunctionalClosed : P.uartFunctional
  spiFunctionalClosed : P.spiFunctional

def PeripheralInterfacesClosed (P : PeripheralInterfacesPackage) : Prop :=
  P.gpioFunctional ∧ P.uartFunctional ∧ P.spiFunctional

theorem peripheral_interfaces_closed_from_evidence
    (P : PeripheralInterfacesPackage) (E : PeripheralInterfacesEvidence P) :
    PeripheralInterfacesClosed P := by
  exact And.intro E.gpioFunctionalClosed (And.intro E.uartFunctionalClosed E.spiFunctionalClosed)

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse