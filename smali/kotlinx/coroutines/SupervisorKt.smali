.class public Lkotlinx/coroutines/SupervisorKt;
.super Ljava/lang/Object;
.source "Supervisor.kt"


# direct methods
.method public static final record(Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;

    if-ne p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;->getLocation()Lkotlin/reflect/jvm/internal/impl/incremental/components/LocationInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;->getRequiresPosition()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/incremental/components/LocationInfo;->getPosition()Lkotlin/reflect/jvm/internal/impl/incremental/components/Position;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/Position;->NO_POSITION:Lkotlin/reflect/jvm/internal/impl/incremental/components/Position;

    :goto_0
    move-object v3, v0

    .line 4
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/incremental/components/LocationInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->asString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "getFqName(scopeOwner).asString()"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/incremental/components/ScopeKind;->CLASSIFIER:Lkotlin/reflect/jvm/internal/impl/incremental/components/ScopeKind;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v6

    const-string p1, "name.asString()"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;->record(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/incremental/components/Position;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/incremental/components/ScopeKind;Ljava/lang/String;)V

    return-void
.end method

.method public static final record(Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v3

    const-string p2, "scopeOwner.fqName.asString()"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v5

    const-string p2, "name.asString()"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker$DO_NOTHING;

    if-ne p0, p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;->getLocation()Lkotlin/reflect/jvm/internal/impl/incremental/components/LocationInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;->getRequiresPosition()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/incremental/components/LocationInfo;->getPosition()Lkotlin/reflect/jvm/internal/impl/incremental/components/Position;

    move-result-object p2

    goto :goto_0

    :cond_2
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/incremental/components/Position;->NO_POSITION:Lkotlin/reflect/jvm/internal/impl/incremental/components/Position;

    :goto_0
    move-object v2, p2

    .line 9
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/incremental/components/LocationInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/incremental/components/ScopeKind;->PACKAGE:Lkotlin/reflect/jvm/internal/impl/incremental/components/ScopeKind;

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;->record(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/incremental/components/Position;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/incremental/components/ScopeKind;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
