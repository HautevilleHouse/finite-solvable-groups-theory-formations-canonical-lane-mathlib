import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.FormationClass

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure FittingClassPackage where
  closureUnderNormalSubgroups : Prop
  closureUnderProducts : Prop
  closureUnderQuotients : Prop
  fittingFormation : Prop
  radical : Prop

structure FittingClassEvidence (F : FittingClassPackage) where
  closureUnderNormalSubgroupsClosed : F.closureUnderNormalSubgroups
  closureUnderProductsClosed : F.closureUnderProducts
  closureUnderQuotientsClosed : F.closureUnderQuotients
  fittingFormationClosed : F.fittingFormation
  radicalClosed : F.radical

def FittingClassClosed (F : FittingClassPackage) : Prop :=
  F.closureUnderNormalSubgroups ∧ F.closureUnderProducts ∧ F.closureUnderQuotients ∧
  F.fittingFormation ∧ F.radical

theorem fitting_class_closed_from_evidence (F : FittingClassPackage) (E : FittingClassEvidence F) :
    FittingClassClosed F := by
  exact And.intro E.closureUnderNormalSubgroupsClosed
    (And.intro E.closureUnderProductsClosed
      (And.intro E.closureUnderQuotientsClosed
        (And.intro E.fittingFormationClosed E.radicalClosed)))

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse