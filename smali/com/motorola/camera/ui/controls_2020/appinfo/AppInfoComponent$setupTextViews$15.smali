.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$15;
.super Lkotlin/jvm/internal/Lambda;
.source "AppInfoComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$15;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$15;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$15;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$15;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent$setupTextViews$15;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    const-string p0, "THRML: "

    .line 2
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
