import BridgeLemmas

/-!
# Saturated Formations Package
-/

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure SaturatedFormationPackage where
  formation : FormationClass
  residual : Subgroup
  locallyDefined : Prop
  saturatedCondition : Prop

structure SaturatedFormationEvidence (P : SaturatedFormationPackage) where
  locallyDefinedClosed : P.locallyDefined
  saturatedConditionClosed : P.saturatedCondition

def SaturatedFormationClosed (P : SaturatedFormationPackage) : Prop :=
  P.locallyDefined ∧ P.saturatedCondition

theorem saturated_formation_closed_from_evidence (P : SaturatedFormationPackage)
    (E : SaturatedFormationEvidence P) : SaturatedFormationClosed P :=
  by exact And.intro E.locallyDefinedClosed E.saturatedConditionClosed

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse
