.class final Lcom/weibo/sdk/android/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/weibo/sdk/android/h;


# direct methods
.method constructor <init>(Lcom/weibo/sdk/android/h;)V
    .locals 0

    iput-object p1, p0, Lcom/weibo/sdk/android/i;->a:Lcom/weibo/sdk/android/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/weibo/sdk/android/i;->a:Lcom/weibo/sdk/android/h;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/h;->a()V

    const/4 v0, 0x0

    return v0
.end method
