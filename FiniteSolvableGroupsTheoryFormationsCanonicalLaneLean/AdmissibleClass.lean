import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure AdmissibleClass where
  object : FormationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FormationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse
