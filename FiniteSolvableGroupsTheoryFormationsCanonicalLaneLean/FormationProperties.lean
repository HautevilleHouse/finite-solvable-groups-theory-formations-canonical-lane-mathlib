import FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.FormationAdmissibleObject

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure FormationPropertiesPackage (F : Formation) where
  saturatedCondition : Prop
  primitiveGroupProperty : Prop
  complementCondition : Prop
  formationSchunckClass : Prop

structure FormationPropertiesEvidence {F : Formation} (P : FormationPropertiesPackage F) where
  saturatedConditionClosed : P.saturatedCondition
  primitiveGroupPropertyClosed : P.primitiveGroupProperty
  complementConditionClosed : P.complementCondition
  formationSchunckClassClosed : P.formationSchunckClass

def FormationPropertiesClosed {F : Formation} (P : FormationPropertiesPackage F) : Prop :=
  P.saturatedCondition ∧ P.primitiveGroupProperty ∧ P.complementCondition ∧ P.formationSchunckClass

theorem formation_properties_closed_from_evidence {F : Formation}
    (P : FormationPropertiesPackage F) (E : FormationPropertiesEvidence P) :
    FormationPropertiesClosed P := by
  exact And.intro E.saturatedConditionClosed
    (And.intro E.primitiveGroupPropertyClosed
      (And.intro E.complementConditionClosed E.formationSchunckClassClosed))

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse