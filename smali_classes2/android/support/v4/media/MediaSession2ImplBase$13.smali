.class Landroid/support/v4/media/MediaSession2ImplBase$13;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaSession2ImplBase;->notifyAgentUpdatedNotLocked(Landroid/support/v4/media/MediaPlaylistAgent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase;

.field final synthetic val$shuffleMode:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$13;->this$0:Landroid/support/v4/media/MediaSession2ImplBase;

    iput p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$13;->val$shuffleMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$13;->val$shuffleMode:I

    invoke-virtual {p1, p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onShuffleModeChanged(I)V

    return-void
.end method
