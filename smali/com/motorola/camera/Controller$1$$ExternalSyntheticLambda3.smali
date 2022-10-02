.class public final synthetic Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;->INSTANCE:Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda3;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/utility/LensApiHelper;->getInstance()Lcom/motorola/camera/utility/LensApiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/utility/LensApiHelper;->initialize()V

    return-void
.end method
