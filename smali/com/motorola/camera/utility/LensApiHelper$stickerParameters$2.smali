.class public final Lcom/motorola/camera/utility/LensApiHelper$stickerParameters$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LensApiHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/utility/LensApiHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/utility/LensApiHelper$stickerParameters$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/utility/LensApiHelper$stickerParameters$2;

    invoke-direct {v0}, Lcom/motorola/camera/utility/LensApiHelper$stickerParameters$2;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/LensApiHelper$stickerParameters$2;->INSTANCE:Lcom/motorola/camera/utility/LensApiHelper$stickerParameters$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGoogleARStickersParameters:Lorg/json/JSONObject;

    return-object p0
.end method
