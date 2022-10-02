.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;->INSTANCE:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    sget-boolean p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sInitialized:Z

    .line 1
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "MLKitBarcodeDetector"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method
