.class Lcom/pccw/mobile/sip/CheckVersionActivity$4$1;
.super Ljava/lang/Object;
.source "CheckVersionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pccw/mobile/sip/CheckVersionActivity$4;->onCallSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pccw/mobile/sip/CheckVersionActivity$4;

.field final synthetic val$msisdn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pccw/mobile/sip/CheckVersionActivity$4;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/pccw/mobile/sip/CheckVersionActivity$4;

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/pccw/mobile/sip/CheckVersionActivity$4$1;->this$1:Lcom/pccw/mobile/sip/CheckVersionActivity$4;

    iput-object p2, p0, Lcom/pccw/mobile/sip/CheckVersionActivity$4$1;->val$msisdn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/pccw/mobile/sip/CheckVersionActivity$4$1;->this$1:Lcom/pccw/mobile/sip/CheckVersionActivity$4;

    iget-object v0, v0, Lcom/pccw/mobile/sip/CheckVersionActivity$4;->this$0:Lcom/pccw/mobile/sip/CheckVersionActivity;

    invoke-virtual {v0}, Lcom/pccw/mobile/sip/CheckVersionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Get MSISDN success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pccw/mobile/sip/CheckVersionActivity$4$1;->val$msisdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1094
    return-void
.end method
