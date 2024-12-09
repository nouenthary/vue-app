<template>
    <div>
        Course Vues
 
        <div>
            <pre class="text-red">
                {{data}}
            </pre>
        </div>
    </div>
</template>

<script>
    export default {
        name: "CourseView",
        data(){
            return {
                data:[],
            };
        },
        methods: {
            getData(){
                fetch('https://fakestoreapi.com/products/category/jewelery')
                .then(res=>res.json())
                .then(json=>{
                    this.data = json;
                    console.log(json);
                });
            },
            //http://35.240.175.254:3000/

             getDatas(){
                fetch('http://35.240.175.254:3000')
                .then(res=>res.json())
                .then(json=>{
                    console.log(json);
                });
            },
        },
        created(){
            this.getData();
            this.getDatas();
        }
    }
</script>

<style scoped>

</style>
