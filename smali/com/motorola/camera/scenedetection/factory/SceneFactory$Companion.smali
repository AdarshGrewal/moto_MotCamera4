.class public final Lcom/motorola/camera/scenedetection/factory/SceneFactory$Companion;
.super Ljava/lang/Object;
.source "SceneFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFactory()Lcom/motorola/camera/scenedetection/factory/SceneFactory;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->factory$delegate:Lkotlin/Lazy;

    .line 2
    check-cast p0, Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/scenedetection/factory/SceneFactory;

    return-object p0
.end method
