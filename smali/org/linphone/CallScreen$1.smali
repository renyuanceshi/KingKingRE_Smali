.class Lorg/linphone/CallScreen$1;
.super Landroid/os/Handler;
.source "CallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/linphone/CallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/linphone/CallScreen;


# direct methods
.method constructor <init>(Lorg/linphone/CallScreen;)V
    .locals 0
    .param p1, "this$0"    # Lorg/linphone/CallScreen;

    .prologue
    .line 285
    iput-object p1, p0, Lorg/linphone/CallScreen$1;->this$0:Lorg/linphone/CallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/linphone/CallScreen$1;->this$0:Lorg/linphone/CallScreen;

    invoke-virtual {v0}, Lorg/linphone/CallScreen;->onResume()V

    .line 288
    return-void
.end method
