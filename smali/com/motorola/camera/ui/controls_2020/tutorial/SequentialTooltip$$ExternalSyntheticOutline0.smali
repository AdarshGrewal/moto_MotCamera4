.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;


# direct methods
.method public static m(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method
