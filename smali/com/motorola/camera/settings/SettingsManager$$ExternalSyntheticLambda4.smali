.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;

.field public static final synthetic INSTANCE$com$google$android$exoplayer2$ui$SpannedToHtmlConverter$SpanInfo$$InternalSyntheticLambda$0$051a855d088ae4718a2f976a2a9ece272be410382031f6bce8d670538f7c7277$0:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;->INSTANCE$com$google$android$exoplayer2$ui$SpannedToHtmlConverter$SpanInfo$$InternalSyntheticLambda$0$051a855d088ae4718a2f976a2a9ece272be410382031f6bce8d670538f7c7277$0:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;

    new-instance v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    .line 1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    .line 2
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, p0

    if-lt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    .line 3
    :goto_1
    check-cast p1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    check-cast p2, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    .line 4
    iget p0, p2, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    iget v0, p1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->end:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    iget-object p0, p1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->openingTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object p0, p1, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->closingTag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
