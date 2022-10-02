.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    sget p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkPreviewPreference;->$r8$clinit:I

    const-string p0, "it"

    .line 1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
