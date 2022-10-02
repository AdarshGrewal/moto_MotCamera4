.class public final synthetic Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;


# static fields
.field public static final synthetic INSTANCE$com$motorola$camera$fsm$camera$states$runnables$IdleOnEntryRunnable$$InternalSyntheticLambda$5$b6c230b3f824de88ff48ff73a25c64b5e8af639ea93f96d30da5c07a30746cd3$1:Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$fsm$camera$states$runnables$IdleOnEntryRunnable$$InternalSyntheticLambda$5$b6c230b3f824de88ff48ff73a25c64b5e8af639ea93f96d30da5c07a30746cd3$1:Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SDCARD_INSERTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    return-void
.end method
