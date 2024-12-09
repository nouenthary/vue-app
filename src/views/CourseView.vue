<template>
    <div>
        Course Vue

        <div>
            <pre>
                {{data}}
            </prev>
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
            }
        },
        created(){
            this.getData();
        }
    }
</script>

<style scoped>

</style>
