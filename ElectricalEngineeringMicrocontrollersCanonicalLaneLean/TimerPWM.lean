import ElectricalEngineeringMicrocontrollersCanonicalLaneLean.MicrocontrollerArchitecture

namespace HautevilleHouse
namespace ElectricalEngineeringMicrocontrollersCanonicalLaneLean

structure TimerPackage where
  timerCount : Nat
  resolution : Nat
  prescalerOptions : List Nat
  overflowInterrupt : Prop

default TimerPackage where
  timerCount := 3
  resolution := 16
  prescalerOptions := [1,8,64,256,1024]
  overflowInterrupt := True

structure PWMPackage where
  channelCount : Nat
  frequency : Nat
  dutyCycleRange : Nat
  complementaryOutput : Prop

default PWMPackage where
  channelCount := 6
  frequency := 1000
  dutyCycleRange := 255
  complementaryOutput := True

structure TimerPWMPackage where
  timer : TimerPackage
  pwm : PWMPackage
  timerPWMEnabled : Prop

structure TimerPWMEvidence (T : TimerPWMPackage) where
  timerValid : T.timer.timerCount > 0
  pwmValid : T.pwm.channelCount > 0
  timerPWMEnabledClosed : T.timerPWMEnabled

def TimerPWMClosed (T : TimerPWMPackage) : Prop :=
  T.timer.timerCount > 0 ∧ T.pwm.channelCount > 0 ∧ T.timerPWMEnabled

theorem timer_pwm_closed_from_evidence
    (T : TimerPWMPackage) (E : TimerPWMEvidence T) : TimerPWMClosed T := by
  exact And.intro E.timerValid (And.intro E.pwmValid E.timerPWMEnabledClosed)

end ElectricalEngineeringMicrocontrollersCanonicalLaneLean
end HautevilleHouse