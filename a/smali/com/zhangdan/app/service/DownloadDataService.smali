.class public Lcom/zhangdan/app/service/DownloadDataService;
.super Landroid/app/IntentService;


# static fields
.field public static a:I


# instance fields
.field private b:Lcom/zhangdan/app/service/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/zhangdan/app/service/DownloadDataService;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "zhangdan"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/service/DownloadDataService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/service/DownloadDataService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const/4 v0, 0x0

    sput v0, Lcom/zhangdan/app/service/DownloadDataService;->a:I

    iget-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->b:Lcom/zhangdan/app/service/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->b:Lcom/zhangdan/app/service/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->b:Lcom/zhangdan/app/service/a;

    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/zhangdan/app/service/DownloadDataService;->a:I

    iget-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->b:Lcom/zhangdan/app/service/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->b:Lcom/zhangdan/app/service/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/a;->a()V

    :cond_0
    new-instance v0, Lcom/zhangdan/app/service/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/service/a;-><init>(Lcom/zhangdan/app/service/DownloadDataService;)V

    iput-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->b:Lcom/zhangdan/app/service/a;

    iget-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->b:Lcom/zhangdan/app/service/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/service/DownloadDataService;->b:Lcom/zhangdan/app/service/a;

    return-void
.end method
