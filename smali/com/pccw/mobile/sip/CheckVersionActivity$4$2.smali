.class Lcom/pccw/mobile/sip/CheckVersionActivity$4$2;
.super Ljava/lang/Object;
.source "CheckVersionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pccw/mobile/sip/CheckVersionActivity$4;->onCallFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pccw/mobile/sip/CheckVersionActivity$4;


# direct methods
.method constructor <init>(Lcom/pccw/mobile/sip/CheckVersionActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/pccw/mobile/sip/CheckVersionActivity$4;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/pccw/mobile/sip/CheckVersionActivity$4$2;->this$1:Lcom/pccw/mobile/sip/CheckVersionActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/pccw/mobile/sip/CheckVersionActivity$4$2;->this$1:Lcom/pccw/mobile/sip/CheckVersionActivity$4;

    iget-object v0, v0, Lcom/pccw/mobile/sip/CheckVersionActivity$4;->this$0:Lcom/pccw/mobile/sip/CheckVersionActivity;

    invoke-virtual {v0}, Lcom/pccw/mobile/sip/CheckVersionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Get MSISDN fail"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1106
    return-void
.end method
