.class public final Landroidx/preference/R$id;
.super Ljava/lang/Object;


# direct methods
.method public static final getArity(Lkotlin/reflect/jvm/internal/calls/Caller;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;)I"
        }
    .end annotation

    const-string v0, "$this$arity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
