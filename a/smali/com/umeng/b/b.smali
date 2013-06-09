.class public Lcom/umeng/b/b;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static final e:[Ljava/lang/String;

.field private static f:Z

.field private static g:Z

.field private static h:Lcom/umeng/b/a;

.field private static i:Lcom/umeng/b/d;

.field private static j:Landroid/content/Context;

.field private static k:Lcom/umeng/common/net/s;

.field private static l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/umeng/b/b;->f:Z

    sput-boolean v2, Lcom/umeng/b/b;->a:Z

    const-class v0, Lcom/umeng/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/b/b;->b:Ljava/lang/String;

    sput-boolean v3, Lcom/umeng/b/b;->g:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://au.umeng.com/api/check_app_update"

    aput-object v1, v0, v3

    const-string v1, "http://au.umeng.co/api/check_app_update"

    aput-object v1, v0, v2

    sput-object v0, Lcom/umeng/b/b;->e:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/b/b;->i:Lcom/umeng/b/d;

    new-instance v0, Lcom/umeng/b/f;

    invoke-direct {v0}, Lcom/umeng/b/f;-><init>()V

    sput-object v0, Lcom/umeng/b/b;->k:Lcom/umeng/common/net/s;

    new-instance v0, Lcom/umeng/b/g;

    invoke-direct {v0}, Lcom/umeng/b/g;-><init>()V

    sput-object v0, Lcom/umeng/b/b;->l:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/b/b;->f:Z

    return-void
.end method

.method static a(ILcom/umeng/b/e;)V
    .locals 2

    sget-object v0, Lcom/umeng/b/b;->i:Lcom/umeng/b/d;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p0, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/umeng/b/b;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/umeng/b/b;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/umeng/common/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V

    sget-object v0, Lcom/umeng/b/b;->b:Ljava/lang/String;

    const-string v1, "unexpected null context in update"

    invoke-static {v0, v1}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/umeng/b/b;->b:Ljava/lang/String;

    const-string v2, "Exception occurred in Mobclick.update(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/umeng/b/b;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/b/b;->a(ILcom/umeng/b/e;)V

    sget-object v0, Lcom/umeng/b/b;->b:Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/a;->a()V

    invoke-static {p0}, Lcom/umeng/common/a/b;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/b/b;->j:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/b/j;

    invoke-direct {v1, p0}, Lcom/umeng/b/j;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/b/e;)V
    .locals 4

    :try_start_0
    const-string v0, ""

    invoke-static {p0}, Lcom/umeng/common/b;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v2, "UMGprsCondition"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v2, "UMNewVersion"

    invoke-virtual {v0, v2}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/umeng/b/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/umeng/b/e;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v2, "UMTargetSize"

    invoke-virtual {v0, v2}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/umeng/b/e;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/umeng/b/e;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/umeng/b/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v2, "UMUpdateSize"

    invoke-virtual {v0, v2}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/umeng/b/e;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p1, Lcom/umeng/b/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v2

    const-string v3, "UMUpdateTitle"

    invoke-virtual {v2, v3}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v2

    const-string v3, "UMUpdateNow"

    invoke-virtual {v2, v3}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/b/i;

    invoke-direct {v3, p0, p1}, Lcom/umeng/b/i;-><init>(Landroid/content/Context;Lcom/umeng/b/e;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v2

    const-string v3, "UMNotNow"

    invoke-virtual {v2, v3}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/umeng/b/h;

    invoke-direct {v3}, Lcom/umeng/b/h;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/umeng/b/b;->b:Ljava/lang/String;

    const-string v2, "Fail to create update dialog box."

    invoke-static {v1, v2, v0}, Lcom/umeng/common/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a(Lcom/umeng/b/d;)V
    .locals 0

    sput-object p0, Lcom/umeng/b/b;->i:Lcom/umeng/b/d;

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/umeng/b/b;->g:Z

    return p0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/b/b;->a:Z

    return-void
.end method

.method static b(Landroid/content/Context;Lcom/umeng/b/e;)V
    .locals 6

    sget-object v0, Lcom/umeng/b/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/umeng/b/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/umeng/common/a;->a()V

    iget-boolean v0, p1, Lcom/umeng/b/e;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/umeng/common/net/f;

    const-string v2, "delta_update"

    invoke-static {p0}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/umeng/b/e;->d:Ljava/lang/String;

    sget-object v5, Lcom/umeng/b/b;->k:Lcom/umeng/common/net/s;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/s;)V

    sget-object v1, Lcom/umeng/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/f;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/f;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/umeng/common/net/f;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/umeng/common/net/f;

    const-string v2, "update"

    invoke-static {p0}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/umeng/b/e;->d:Ljava/lang/String;

    sget-object v5, Lcom/umeng/b/b;->k:Lcom/umeng/common/net/s;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/s;)V

    sget-object v1, Lcom/umeng/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/f;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/umeng/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/f;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/umeng/common/net/f;->a()V

    goto :goto_0
.end method

.method static synthetic c()Lcom/umeng/b/a;
    .locals 1

    sget-object v0, Lcom/umeng/b/b;->h:Lcom/umeng/b/a;

    return-object v0
.end method

.method static synthetic d()Lcom/umeng/b/d;
    .locals 1

    sget-object v0, Lcom/umeng/b/b;->i:Lcom/umeng/b/d;

    return-object v0
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/umeng/b/b;->j:Landroid/content/Context;

    return-object v0
.end method
