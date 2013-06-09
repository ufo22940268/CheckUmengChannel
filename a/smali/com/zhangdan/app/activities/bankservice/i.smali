.class final Lcom/zhangdan/app/activities/bankservice/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/bankservice/h;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/bankservice/h;Landroid/widget/EditText;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/i;->a:Lcom/zhangdan/app/activities/bankservice/h;

    iput-object p2, p0, Lcom/zhangdan/app/activities/bankservice/i;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/zhangdan/app/activities/bankservice/i;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/bankservice/i;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/bankservice/i;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
