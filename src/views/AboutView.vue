<script lang="ts">
    import {defineComponent, reactive} from "vue";

    type CourseModel = {
        id: number,
        title: string,
        subtitle: string,
        description: string,
    }

    export default defineComponent({
        setup() {

            const state = reactive<{ courses: CourseModel[] }>({
                courses: [
                    {
                        id: 1,
                        title: "Vue Framework",
                        subtitle: "Learn more ...",
                        description: "This is vue framework"
                    },
                    {
                        id: 21,
                        title: "Laravel Framework",
                        subtitle: "Learn more ...",
                        description: "This is Laravel framework"
                    }
                ]
            });

            const addCourse = () => {
                let courseNew: CourseModel = {
                    id: Math.random(),
                    description: 'Flutter Framework',
                    subtitle: 'Learn more ...',
                    title: 'This is Flutter framework'
                };

                state.courses = [...state.courses, courseNew];

                return 0;
            };

            const removeCourse = (id: number) => {
                if (state.courses.length > 0) {
                    state.courses = state.courses.filter(c => c.id !== id);
                }
                return true;
            };

            return {state, addCourse, removeCourse};
        }
    })

</script>

<template>
    <div>
        <h1>
            login successfully.
        </h1>

        <v-card max-width="400" class="mx-auto ma-5">
            <v-btn class="" color="primary" block @click="addCourse">
                add course
            </v-btn>
        </v-card>

        <v-col cols="auto">
            <v-card
                    v-for="(item) in state.courses"
                    :key="item.id"
                    class="mx-auto ma-5"
                    max-width="400"
                    :title="item.title"
                    :subtitle="item.subtitle"
                    prepend-avatar="https://cdn.vuetifyjs.com/images/logos/v-alt.svg"
                    append-avatar="https://cdn.vuetifyjs.com/images/john.jpg"
            >
                <v-card-text>
                    {{item.description}}
                </v-card-text>
                <v-card-actions>
                    <v-btn class="bg-red" color="" block @click="removeCourse(item.id)">
                        Delete
                    </v-btn>
                </v-card-actions>
            </v-card>
        </v-col>
    </div>
</template>

