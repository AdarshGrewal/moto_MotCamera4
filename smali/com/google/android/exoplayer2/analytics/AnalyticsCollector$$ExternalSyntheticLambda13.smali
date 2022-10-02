.class public final synthetic Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoInputFormatChanged()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onVideoInputFormatChanged1()V

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onDecoderInputFormatChanged()V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;->onTracksChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector$$ExternalSyntheticLambda13;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;

    sget v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->$r8$clinit:I

    .line 1
    check-cast p2, Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v3, p1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 4
    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    if-nez p1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_2
    if-nez p1, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    iget-boolean p0, p1, Landroidx/preference/Preference;->mVisible:Z

    if-ne p0, v4, :cond_4

    move v3, v4

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;->highlightAnimation()V

    goto :goto_8

    :cond_5
    if-nez v0, :cond_6

    goto :goto_8

    .line 8
    :cond_6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;->highlight()V

    goto :goto_8

    :cond_7
    if-nez p2, :cond_8

    move-object p1, v1

    goto :goto_4

    .line 9
    :cond_8
    iget-object p1, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    :goto_4
    if-nez p0, :cond_9

    goto :goto_5

    .line 10
    :cond_9
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 11
    :goto_5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    if-nez p0, :cond_a

    goto :goto_6

    .line 12
    :cond_a
    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_6
    if-nez p0, :cond_b

    goto :goto_7

    .line 13
    :cond_b
    iget-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    if-ne p1, v4, :cond_c

    move v3, v4

    :cond_c
    :goto_7
    if-eqz v3, :cond_d

    .line 14
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;->highlightAnimation()V

    goto :goto_8

    :cond_d
    if-nez v0, :cond_e

    goto :goto_8

    .line 15
    :cond_e
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightDropDownCategory;->highlight()V

    :cond_f
    :goto_8
    return v4
.end method
