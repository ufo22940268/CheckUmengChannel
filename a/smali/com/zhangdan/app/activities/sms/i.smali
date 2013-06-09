.class final Lcom/zhangdan/app/activities/sms/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/g;

.field private final synthetic b:Lcom/zhangdan/app/widget/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/g;Lcom/zhangdan/app/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/i;->a:Lcom/zhangdan/app/activities/sms/g;

    iput-object p2, p0, Lcom/zhangdan/app/activities/sms/i;->b:Lcom/zhangdan/app/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/i;->b:Lcom/zhangdan/app/widget/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/a;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
