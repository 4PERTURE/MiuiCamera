.class public Lcom/android/camera/effect/renders/FocusPeakingRender;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "FocusPeakingRender.java"


# static fields
.field static final DEFAULT_PEAK_COLOR:I = -0x10000

.field static final DEFAULT_THRESHOLD:F


# instance fields
.field public mFirstPassRender:Lcom/android/camera/effect/renders/FocusPeakingFirstPassRender;

.field public mFocusPeakingRender:Lcom/android/camera/effect/renders/PipeRenderPair;

.field public mNoneEffectRender:Lcom/android/camera/effect/renders/NoneEffectRender;

.field public mSecondPassRender:Lcom/android/camera/effect/renders/FocusPeakingSecondPassRender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "camera_peaking_mf_threshold"

    const/16 v1, 0x14

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/camera/effect/renders/FocusPeakingRender;->DEFAULT_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 2
    new-instance v0, Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mNoneEffectRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    .line 3
    new-instance v0, Lcom/android/camera/effect/renders/FocusPeakingFirstPassRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/FocusPeakingFirstPassRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mFirstPassRender:Lcom/android/camera/effect/renders/FocusPeakingFirstPassRender;

    .line 4
    new-instance v0, Lcom/android/camera/effect/renders/FocusPeakingSecondPassRender;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/FocusPeakingSecondPassRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mSecondPassRender:Lcom/android/camera/effect/renders/FocusPeakingSecondPassRender;

    .line 5
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    iget-object v1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mFirstPassRender:Lcom/android/camera/effect/renders/FocusPeakingFirstPassRender;

    iget-object v2, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mSecondPassRender:Lcom/android/camera/effect/renders/FocusPeakingSecondPassRender;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mFocusPeakingRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 6
    iget-object p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mNoneEffectRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mFocusPeakingRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/FocusPeakingRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 9
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mNoneEffectRender:Lcom/android/camera/effect/renders/NoneEffectRender;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mFocusPeakingRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method
